Executable = run.sh

+Group="GRAD"
+Project="AI_ROBOTICS"
+ProjectDescription="Training model"
+GPUJob=true

Requirements=(TARGET.GPUSlot && Eldar == True)
Rank=memory
Universe=vanilla
Getenv=True
Notification=Complete

Log=/u/nimit/logs/$(ClusterId).log
Output=/u/nimit/logs/$(ClusterId).out
Error=/u/nimit/logs/$(ClusterId).err

Queue 1
