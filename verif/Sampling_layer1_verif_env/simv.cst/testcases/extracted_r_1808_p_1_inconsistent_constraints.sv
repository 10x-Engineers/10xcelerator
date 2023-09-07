class c_1808_1;
    integer i = -300;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1808_1;
    c_1808_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x1xzx0z0z0x11z1xz10z0x00101x10xxxzzxxxxzxzxxzzxzxxxzzzxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
