# MR-RL

# DT-environment
Step 1: Familiarize yourself with the basic environment of Unity. A 10-minute introduction available at this link is sufficient for this project: https://www.bilibili.com/video/BV1PL4y1e7hy/?spm_id_from=333.337.search-card.all.click&vd_source=b9f4b3a7fe3a0c4c762001c22d915ed0

Step 2: Configure the MRTK environment and prepare for program packaging and real machine deployment. More information can be found here: https://blog.csdn.net/a451319296/category_11622986.html

Step 3: Model import - The model designed for this project has already undergone joint reconstruction and is packaged as chonggou.FBX in STEP format. It is recommended to convert it directly to FBX using 3ds Max (Note: Zhihu Link). Then, it is advised to read briefly on how to reconstruct the parent-child relationship of joints at Zhihu Question Link.

Step 4: Having constructed the HoloLens simulation environment through the above steps, you can now build the program. The files Joint_1.cs, Joint_2.cs, Joint_3.cs, cube.cs, and interaction_data.cs are scripts controlling the movements of joints 1-3, displaying real environment video, and acquiring hand tracking and eye tracking data respectively. The joint scripts need to be mounted on the corresponding objects at the correct locations.

Step 5: Configure voice input settings as per the guidelines found here: CSDN Blog Link. The configuration of hand movement and eye tracking data is similar.

Step 6: Having already constructed the HoloLens through the above steps, you can now work on the PC side programs. The files back.py, ceshi.py, cal_dz.py, control_real_new.py, and dion.py are used for robot calibration (re-writing the robot joints during startup or when an error occurs), running robot tests (reaching the initial test position), calculating the dz of the eyeball on the spherical surface when dx and dy are known (to judge whether the needle is inserted into the eyeball), getting hand movement, voice, and eye tracking data from HoloLens to control the real robot's movements and then converting the real robot's joint positions to virtual robot's joint positions for digital twin implementation, and calling the microscope, respectively.

Step 7: Package the program for testing on real machines.

#RL learning
