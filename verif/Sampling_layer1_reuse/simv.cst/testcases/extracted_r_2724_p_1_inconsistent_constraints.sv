class c_2724_1;
    integer i = -452;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2724_1;
    c_2724_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01110z1x1111zxz000x0001xx1z1x1z0zzxzzxxxzzxxxxzxzxzzzxzxxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
