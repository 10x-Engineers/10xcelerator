class c_2713_1;
    integer i = -451;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2713_1;
    c_2713_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110xz10000x01zxx01101xz0zx1zzzzxzxzzzxxxxxxxxzxzxxzxxzzzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
