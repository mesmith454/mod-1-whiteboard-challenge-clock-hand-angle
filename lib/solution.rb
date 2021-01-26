def clock_angle(time)
   hours = time.split(":")[0].to_i
   minutes = time.split(":")[1].to_i
    # if hour = 12
    #     hour_angle = 0
    # end

    hour_hand_degrees_per_minute = 0.5

    hour_angle = (hours * (360 / 12)) + (minutes * hour_hand_degrees_per_minute)
    minute_angle = (minutes * (360 / 60))


    angle_between = (hour_angle - minute_angle).abs

    if angle_between > 180
        angle_between = 360 - angle_between
    end
    angle_between
end

#