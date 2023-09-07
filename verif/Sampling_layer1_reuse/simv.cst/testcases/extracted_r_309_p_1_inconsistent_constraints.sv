class c_309_1;
    integer i = -50;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_309_1;
    c_309_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx01z10x00zx11z1xxz1xx00101z10zxxzxzzzxxxzzzzzxzzzxzxzxxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
