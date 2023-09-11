class c_677_1;
    integer i = -111;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_677_1;
    c_677_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx001001xx110xzzx1x100z110z0zx0zzxzxxxzxxxxzzxzzxxzzxzzxzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
