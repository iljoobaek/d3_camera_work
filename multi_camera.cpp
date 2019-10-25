/* File Name : multi_camera.cpp
 * @Brief : This file contains definitions for viewing multiple camera output streams from multiple cameras in one single frame for Xavier AGX and FPD link III interface . Tested with IMX390RCM Cameras 
 * Author : Mahesh Kumar  <mkumaras@andrew.cmu.edu>
 */


#include <stdio.h>
#include <opencv2/opencv.hpp>

using namespace cv;
using namespace std;

/* @Brief This function combines the camera streams from multiple frames into one single frame
 * @Params   nArgs - Number of frames, Mat Frames individual frames
 * @Returns  Mat dispImage - Combined frame
 */
Mat CombineFrames(int nArgs, ...) {
    int size;
    int i;
    int m, n;
    int x, y;

    // rw - Maximum number of images in a row
    // ch - Maximum number of images in a column
    int rw, ch;

    // scale - Determines the factor to scale the image
    float scale;
    int max;

    // Create a new 3 channel image
    Mat nullMat = Mat::zeros(Size(640,480), CV_8UC3);

    // If the number of arguments is lesser than 0 or greater than 12
    // return without displaying
    if(nArgs <= 0) {
        printf("Number of arguments too small....\n");
        return nullMat;
    }
    else if(nArgs > 14) {
        printf("Only 12 images can be handled in a frame\n");
        return nullMat;
    }
    // Determine the size of the image,
    // and the number of rows/cols
    // from number of arguments
    else if (nArgs == 1) {
        rw = ch = 1;
        size = 300;
    }
    else if (nArgs == 2) {
        rw = 2; ch = 1;
        size = 300;
    }
    else if (nArgs == 3 || nArgs == 4) {
        rw = 2; ch = 2;
        size = 300;
    }
    else if (nArgs == 5 || nArgs == 6) {
        rw = 3; ch = 2;
        size = 200;
    }
    else if (nArgs == 7 || nArgs == 8) {
        rw = 4; ch = 2;
        size = 200;
    }
    else {
        rw = 4; ch = 3;
        size = 150;
    }
    // Create a new 3 channel image
    Mat DispImage = Mat::zeros(Size(100 + size*rw, 60 + size*ch), CV_8UC3);

    // Used to get the arguments passed
    va_list args;
    va_start(args, nArgs);

    // Loop for nArgs number of arguments
    for (i = 0, m = 20, n = 20; i < nArgs; i++, m += (20 + size)) {
        // Get the Pointer to the IplImage
        Mat img = va_arg(args, Mat);

        // Check whether it is NULL or not
        // If it is NULL, release the image, and return
        if(img.empty()) {
            printf("Invalid arguments");
            return DispImage;
        }

        // Find the width and height of the image
        x = img.cols;
        y = img.rows;

        // Find whether height or width is greater in order to resize the image
    	max = (x > y)? x: y;

    	// Find the scaling factor to resize the image
    	scale = (float) ( (float) max / size );

    	// Used to Align the images
   	if( i % rw == 0 && m!= 20) {
       	    m = 20;
            n+= 20 + size;
        }

        // Set the image ROI to display the current image
        // Resize the input image and copy the it to the Single Big Image
        Rect ROI(m, n, (int)( x/scale ), (int)( y/scale ));
        Mat temp; resize(img,temp, Size(ROI.width, ROI.height));
        temp.copyTo(DispImage(ROI));
    }   

    // End the number of arguments
    va_end(args);
    return DispImage;
}

/* @Brief This function reads from 2 camera streams using gstreamer plugin. Calls CombineFrame to combine the 2 streams and displays it
 * @Params   None
 * @Returns  0 - Success -1 - Failure
 */

int main(int argc, char** argv)
{

    VideoCapture cap("nvarguscamerasrc sensor-id=0 ! nvvidconv ! video/x-raw, format=(string)BGRx , framerate=(fraction)30/1 ! videoconvert ! video/x-raw, format=(string)BGR ! appsink");
    VideoCapture cap1("nvarguscamerasrc sensor-id=2 ! nvvidconv ! video/x-raw, format=(string)BGRx , framerate=(fraction)30/1 ! videoconvert ! video/x-raw, format=(string)BGR ! appsink");

    if (!cap.isOpened() || !cap1.isOpened())
    {
      cout << "Failed to open camera." << endl;
      return -1;
    }

    while(1)
    {
        Mat frame1,frame2,disp;
    	if (!cap.read(frame1) || !cap1.read(frame2)) {
	    std::cout<<"Capture read error"<<std::endl;
	    break;
	}
	else  {
	    //Mat bgr;
	    //cvtColor(frame, bgr, CV_YUV2BGR_NV12);
            disp = CombineFrames(2,frame1,frame2);
	    cv::imshow("MultiCameraview",disp);
            cv::waitKey(10); // let imshow draw
	}
    }
    cap.release();
    cap1.release();
}
