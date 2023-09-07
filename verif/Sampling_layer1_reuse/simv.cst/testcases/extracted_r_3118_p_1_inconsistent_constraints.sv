class c_3118_1;
    integer i = -518;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3118_1;
    c_3118_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xzx0x00z101zxzz00zx0x1100zz1xzzxzzzxxxzzzxxxzzzxzxxxxxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
