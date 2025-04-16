from cam_track_gen import generate_plot, gen_track, save_as_Matlab, save_to_csv

def main():
    #Change the values as required
    sample_time = 250
    track_num = 10
    #Change the filename to test other models
    filename = 'Light_Aircraft_Below_10000_ft_Data.mat'
    RESULTS = gen_track(filename, sample_time, track_num, seed=False)
    save_as_Matlab(RESULTS)
    save_to_csv(RESULTS)
    generate_plot(RESULTS)
    
if __name__ == "__main__":
    main()
