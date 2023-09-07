class c_2695_1;
    integer i = -448;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2695_1;
    c_2695_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx00xx001x1x11xx1101zxz110xz00zzzxzxzzxxzzxxxxzxxxzzxxzxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
