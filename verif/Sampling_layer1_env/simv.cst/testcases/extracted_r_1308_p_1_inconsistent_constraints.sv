class c_1308_1;
    integer i = -216;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1308_1;
    c_1308_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x0110x01z0010x11x001xxz1z11z01zxxzxxxzzzzxzxzxxzzxxzzzzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
