class c_1153_1;
    integer i = -191;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1153_1;
    c_1153_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1x110z0xx1xzz1zx0x10z1zxxz0xxxzzzxxxzzzzxzzzzxzxxxxxxxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
