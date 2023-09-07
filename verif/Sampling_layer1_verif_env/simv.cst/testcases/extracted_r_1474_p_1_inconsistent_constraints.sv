class c_1474_1;
    integer i = -244;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1474_1;
    c_1474_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0x11x0z0xxz00011x1zxzz0x0zz101zzzxzzzzxzzxxxxzzxzzxzxzxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
