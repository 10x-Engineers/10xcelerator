class c_1573_1;
    integer i = -261;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1573_1;
    c_1573_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x111zz0zz000010x11z1zz0x1z0x110zzzzzxxzxxzxxxxzxxzxxxxxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
