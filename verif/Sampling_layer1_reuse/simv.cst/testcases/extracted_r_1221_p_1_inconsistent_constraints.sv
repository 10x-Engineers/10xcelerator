class c_1221_1;
    integer i = -202;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1221_1;
    c_1221_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx0zxxxxz0xzx1z001x1x01zx0xzz00zzzzzxzzzzzxxzzxzzxzzxxzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
