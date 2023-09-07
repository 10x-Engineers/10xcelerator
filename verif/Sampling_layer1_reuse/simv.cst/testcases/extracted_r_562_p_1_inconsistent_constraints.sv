class c_562_1;
    integer i = -92;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_562_1;
    c_562_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0x1z1zz1z01z010110zxz01xx0xx0zzxxzzzzzxzxzxzxzxxzxxxxzzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
