class c_1411_1;
    integer i = -234;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1411_1;
    c_1411_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0zx1x11100zzzz10z0z1zz000xzx1zzzxzzzzxxxzxxxxzxxzxzzzzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
