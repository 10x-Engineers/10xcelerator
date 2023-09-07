class c_942_1;
    integer i = -155;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_942_1;
    c_942_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10x10xxz0x0x1x01000zx1z0xx01z0zxxzzzzzzxzxzzzzxxzzxxxxzxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
