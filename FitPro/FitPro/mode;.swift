//
//  ExerciseModel.swift
//  FitPro
//
//  Created by Vinukonda,Sirisha on 4/18/18.
//  Copyright © 2018 Joshi,Aawaj R. All rights reserved.
//

import Foundation
import UIKit


let arms=["Bicep curl":
    " While standing, hold a dumbbell in each hand with your arms hanging at your sides and palms facing in towards your body. Keeping your elbows close to your body, rotate your wrist to face outward and bend your elbows to bring the dumbbells up to your shoulders. Hold for one second and slowly lower your arms to return to starting position",
          
          "Hammer curl":
    "Stand up with your torso upright and a dumbbell on each hand being held at arm's length. The elbows should be close to the torso. The palms of the hands should be facing your torso. This will be your starting position. Now, while holding your upper arm stationary, exhale and curl the weight forward while contracting the biceps. Continue to raise the weight until the biceps are fully contracted and the dumbbell is at shoulder level. Hold the contracted position for a brief moment as you squeeze the biceps. Tip: Focus on keeping the elbow stationary and only moving your forearm. After the brief pause, inhale and slowly begin the lower the dumbbells back down to the starting position.",
          
          "Incline Dumbbell Curl":
    "Sit back on an incline bench with a dumbbell in each hand held at arm's length. Keep your elbows close to your torso and rotate the palms of your hands until they are facing forward. This will be your starting position. While holding the upper arm stationary, curl the weights forward while contracting the biceps as you breathe out. Only the forearms should move. Continue the movement until your biceps are fully contracted and the dumbbells are at shoulder level. Hold the contracted position for a second. Slowly begin to bring the dumbbells back to starting position as your breathe in.",
          
          "Alternating Bicep Curl":
    "While standing, hold a dumbbell in each hand with your arms hanging at your sides and palms facing in towards your body. Keeping your elbows close to your body, rotate your right wrist to face outward and bend your elbow to bring the dumbbell up to your shoulders. Hold for one second and slowly lower your right arm to return to starting position. Repeat with left arm.",
          "Barbell Curl":
    "Stand up with your torso upright while holding a barbell at a shoulder-width grip. The palm of your hands should be facing forward and the elbows should be close to the torso. This will be your starting position.While holding the upper arms stationary, curl the weights forward while contracting the biceps as you breathe out. Tip: Only the forearms should move.Continue the movement until your biceps are fully contracted and the bar is at shoulder level. Hold the contracted position for a second and squeeze the biceps hard.Slowly begin to bring the bar back to starting position as your breathe in.Repeat for the recommended amount of repetitions."
    
]
let back=["Wide grip pull up":
    "Step up and grasp bar with overhand wide grip. Pull body up until chin is above bar. Lower body until arms and shoulders are fully extended. Repeat. For more effective pull ups add weight on dip belt or dumbbell between ankle.",
          
          "single arm row":
    "Stand to the left of a bench holding a dumbbell in your left hand with your palm facing in. Place your right hand and right lower leg on the bench. Lean forward at the hips and place right hand on the bench while keeping your abs tight and your back straight. Pull the dumbbell straight up bending your elbow until the dumbbell reaches your chest. Keep your elbow pulled into your side. Hold for one second and lower arm to return to start position. Complete all reps on left side before completing on the right.",
          
          "lat pulldown":
    "Sit on the seat of a cable station with your feet planted on the floor. Hold the bar with an overhand grip and your hands about shoulder-width apart. Keep your back straight and your torso stable by pulling your abdominals in. Using the muscles of your upper back and keeping your shoulders away from your ears, pull the bar down until it reaches just above your chest and your elbows are at your sides. Hold for one second and return to start position with controlled movement.",
          
          "barbbell bent over row":
    "This exercise can be done with a barbell or dumbbells. To start, stand straight up holding a barbell in front of your thighs with a shoulder-width grip and palms facing in. Bend forward at your waist keeping your back straight and abdominals contracted. The barbell should be close to your level of your knees. This is start position. Without moving your torso, pull the barbell up towards you (at the level of your navel), drawing your elbows directly back and keeping them close to your body. Hold for one second and lower the barbell back to start position.",
          "V-Bar Pulldown":
    "Sit down on a pull-down machine with a V-Bar attached to the top pulley.Adjust the knee pad of the machine to fit your height. These pads will prevent your body from being raised by the resistance attached to the bar.Grab the V-bar with the palms facing each other (a neutral grip). Stick your chest out and lean yourself back slightly (around 30-degrees) in order to better engage the lats. This will be your starting position.Using your lats, pull the bar down as you squeeze your shoulder blades. Continue until your chest nearly touches the V-bar. Exhale as you execute this motion. Tip: Keep the torso stationary throughout the movement.After a second hold on the contracted position, slowly bring the bar back to the starting position as you breathe in.Repeat for the prescribed number of repetitions."
]
let legs:[String:String]=["Barbell Squat":
    "Begin with the barbell supported on top of the traps. The chest should be up and the head facing forward. Adopt a hip-width stance with the feet turned out as needed. Descend by flexing the knees, refraining from moving the hips back as much as possible. This requires that the knees travel forward. Ensure that they stay align with the feet. The goal is to keep the torso as upright as possible. Continue all the way down, keeping the weight on the front of the heel. At the moment, the upper legs contact the lower legs reverse the motion, driving the weight upward.",
                          "Dumbbell Rear Lunge":
    "Stand with your torso upright holding two dumbbells in your hands by your sides. This will be your starting position. Step forward with your right leg around 2 feet or so from the foot being left stationary behind and lower your upper body down, while keeping the torso upright and maintaining balance. Inhale as you go down. As in the other exercises, do not allow your knee to go forward beyond your toes as you come down, as this will put undue stress on the knee joint. Make sure that you keep your front shin perpendicular to the ground. Using mainly the heel of your foot, push up and go back to the starting position as you exhale. Repeat the movement for the recommended amount of repetitions and then perform with the left leg.",
                          "Leg Extensions":
    "For this exercise, you will need to use a leg extension machine. First, choose your weight and sit on the machine with your legs under the pad (feet pointed forward) and the hands holding the sidebars. This will be your starting position. Tip: You will need to adjust the pad so that it falls on top of your lower leg (just above your feet). Also, make sure that your legs form a 90-degree angle between the lower and upper leg. If the angle is less than 90-degrees then that means the knee is over the toes, which in turn creates undue stress at the knee joint. If the machine is designed that way, either look for another machine or just make sure that when you start executing the exercise you stop going down once you hit the 90-degree angle. Using your quadriceps, extend your legs to the maximum as you exhale. Ensure that the rest of the body remains stationary on the seat. Pause a second on the contracted position. Slowly lower the weight back to the original position as you inhale, ensuring that you do not go past the 90-degree angle limit.",
                          "Standing Calf Raise":
    "Adjust the padded lever of the calf raise machine to fit your height. Place your shoulders under the pads provided and position your toes facing forward (or using any of the two other positions described at the beginning of the chapter). The balls of your feet should be secured on top of the calf block with the heels extending off it. Push the lever up by extending your hips and knees until your torso is standing erect. The knees should be kept with a slight bend; never locked. Toes should be facing forward, outwards or inwards as described at the beginning of the chapter. This will be your starting position. Raise your heels as you breathe out by extending your ankles as high as possible and flexing your calf. Ensure that the knee is kept stationary at all times. There should be no bending at any time. Hold the contracted position by a second before you start to go back down. Go back slowly to the starting position as you breathe in by lowering your heels as you bend the ankles until calves are stretched.",
                          "Hack Squats":
    "Load the machine with the desired weight and position your shoulders and back against the pads.Position your feet at shoulder width, extend your legs, and release the safety handles.Slowly lower the weight by bending your knees until your thighs are approximately at 90 degrees.Reverse the movement by driving into the platform and extending the knees and hips.Repeat for the desired number of repetitions."
]

let chest:[String:String]=["Barbell Incline Bench Press":
    "Lie back on an incline bench with a dumbbell in each hand atop your thighs. The palms of your hands will be facing each other. Then, using your thighs to help push the dumbbells up, lift the dumbbells one at a time so that you can hold them at shoulder width. Once you have the dumbbells raised to shoulder width, rotate your wrists forward so that the palms of your hands are facing away from you. This will be your starting position. Be sure to keep full control of the dumbbells at all times. Then breathe out and push the dumbbells up with your chest. Lock your arms at the top, hold for a second, and then start slowly lowering the weight. Tip ideally; lowering the weights should take about twice as long as raising them.",
                           "Incline Dumbbell Bench Press":
    "Lie back on an incline bench with a dumbbell in each hand atop your thighs. The palms of your hands will be facing each other.  Then, using your thighs to help push the dumbbells up, lift the dumbbells one at a time so that you can hold them at shoulder width.  Once you have the dumbbells raised to shoulder width, rotate your wrists forward so that the palms of your hands are facing away from you. This will be your starting position.  Be sure to keep full control of the dumbbells at all times. Then breathe out and push the dumbbells up with your chest.Lock your arms at the top, hold for a second, and then start slowly lowering the weight. Tip Ideally, lowering the weights should take about twice as long as raising them.",
                           "Decline Dumbbell Bench Press":
    "Lie down on a flat bench with a dumbbell in each hand resting on top of your thighs. The palms of your hands will be facing each other. Then, using your thighs to help raise the dumbbells up, lift the dumbbells one at a time so that you can hold them in front of you at shoulder width. Once at shoulder width, rotate your wrists forward so that the palms of your hands are facing away from you. The dumbbells should be just to the sides of your chest, with your upper arm and forearm creating a 90-degree angle. Be sure to maintain full control of the dumbbells at all times. This will be your starting position. Then, as you breathe out, use your chest to push the dumbbells up. Lock your arms at the top of the lift and squeeze your chest, hold for a second and then begin coming down slowly.",
                           "Cable Crossover":
    "To get yourself into the starting position, place the pulleys on a high position (above your head), select the resistance to be used and hold the pulleys in each hand. Step forward in front of an imaginary straight line between both pulleys while pulling your arms together in front of you. Your torso should have a small forward bend from the waist. This will be your starting position. With a slight bend on your elbows in order to prevent stress at the biceps tendon, extend your arms to the side (straight out at both sides) in a wide arc until you feel a stretch on your chest. Breathe in as you perform this portion of the movement. Tip: Keep in mind that throughout the movement, the arms and torso should remain stationary; the movement should only occur at the shoulder joint. Return your arms back to the starting position as you breathe out. Make sure to use the same arc of motion used to lower the weights.",
                           "Dips":
    "Position your hands shoulder-width apart on a secured bench or stable chair.Slide your butt off the front of the bench with your legs extended out in front of you.Straighten your arms, keeping a little bend in your elbows to keep tension on your triceps and off your elbow joints.Slowly bend your elbows to lower your body toward the floor until your elbows are at about a 90-degree angle. Be sure to keep your back close to the bench.Once you reach the bottom of the movement, press down into the bench to straighten your elbows, returning to the starting position. This completes one rep.Keep your shoulders down as you lower and raise your body. You can bend your legs to modify this exercise."]
let cardio:[String:String]=["Burpee":
    "Stand upright with arms to sides. Bend over and squat down. Place hands on floor, slightly wider than shoulder width. While holding upper body in place, buck hips ups slightly by extending knees and hips, then immediately kick legs back. Land on forefeet with body in straight, plank position. Keeping upper body in place buck hip up and rapidly pull legs forward under body returning feet in original position. Rise up to original standing posture.",
                            "Jogging Treadmill":
    "Step onto deck of treadmill and grasp rails. Straddle belt by standing on sides of treadmill. Attach safety tether. Select quick start or enter program. Run, keeping pace with treadmill.",
                            "Elliptical Trainer":
    "Step on pedal platforms and grasp handle rails. Select quick start or enter program. Pedal forward by placing weight on one foot, allowing the other foot to move forward. Alternate with opposite side until momentum allows continued forward rotation.",
                            "Runner":
    "when foot contact is made and go through the full stride. Foot contact should occur on the outside edge of the foot and depending on speed either at the mid-foot or forefoot. The initial contact on the outside of the foot is generally not felt and instead for practical reasons should be thought of as a simple mid/whole foot landing.Then run fastly",
                            "Bicycling":
    "You can cycle on the road, a bike path, or a mountain trail. Indoors, you can do your workout on a stationary bike or buy a stand, called an indoor trainer, for your outdoor bike.If you’re a beginner, choose a flat bike path or road. If you’re ready for a tougher workout that also engages your upper body and core, try mountain biking. It’s also called off-road biking. You can do it on trails and different types of rough terrain."
]
let yoga:[String:String]=["Bridge":
    "Lay on your back with your hands by your sides, your knees bent and feet flat on the floor.Make sure your feet are under your knees.Tighten your abdominal and buttock muscles.Raise your hips up to create a straight line from your knees to shoulders.Squeeze your core and try to pull your belly button back toward your spine.If your hips sag or drop, lower yourself back on the floor.The goal is to maintain a straight line from your shoulders to your knees and hold for 20 to 30 seconds. You may need to begin by holding the bridge position for a few seconds as you build your strength. It's better to hold the correct position for a shorter time than to go longer in the incorrect position.",
                          "Downward Dog":
    "Begin in a kneeling position on your mat with hands directly under shoulders, fingers spread wide.Tuck your toes under and engage your abdominals as you push your body up off the mat so only your hands and feet are on the mat.Press through your hands moving your chest gently toward your thighs and your heels gently toward the floor.Relax your head and neck and breathe fully.",
                          "Child Pose":
    "Keep your knees and ankles separated and the tops of your feet on the floor as you shift your weight back over your heels, lengthening your spine, relaxing your head and neck, and reaching forward through your fingertips.Breathe deeply and hold for 10-30 seconds. ",
                          "Warrior1":
    "From a standing position, step your left foot to the back of your mat and lower the inside of your foot so that your back foot is at an angle.Bend your right knee 90 degrees and straighten your back leg.Reach arms overhead and keep torso facing the front.Relax shoulders and breathe gently in and out. Hold 30 seconds and switch sides.",
                          
                          
                          "Triangle":
    "Set up three different colored cones 10 feet apart in a triangle. Assume an athletic position in the center of the triangle.Have a partner call out a cone color.Sprint to the specified cone, stop at the cone and sprint back to the center of the triangle.Reset in an athletic position and wait for your partner's next signal.Continue for the specified duration.After the first two sets, increase the cone distance by three feet",
                          "Chair":
    "Sit up straight, and slowly tilt your head toward your right shoulder until you feel a stretch. Hold this position, and slowly extend your left arm down and to the side. You should feel a stretch on the left side of your neck. Release, and then repeat on the other side. Perform two to five repetitions per side. This stretch will warm up your neck and traps and prepare you for arm exercises."
    
]

var abc:Int?
var exerciseName:String?

let exercises:[[String:String]]=[legs,arms,chest,back,cardio,yoga]





