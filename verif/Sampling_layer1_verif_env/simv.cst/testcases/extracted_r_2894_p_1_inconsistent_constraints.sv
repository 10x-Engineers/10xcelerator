class c_2894_1;
    integer i = -481;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2894_1;
    c_2894_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxz0xzz01zxxzx000z01x1x0zz1xx01xzzzxxzzzxxxzzzzxzzxxxxzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
