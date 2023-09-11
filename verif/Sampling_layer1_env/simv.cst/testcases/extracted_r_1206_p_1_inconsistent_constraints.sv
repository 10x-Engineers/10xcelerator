class c_1206_1;
    integer i = -199;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1206_1;
    c_1206_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1xx1x1z0z011xzx0x001001z01z10zzzzzzzxzxxxxzzxxxzxxzzxzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
