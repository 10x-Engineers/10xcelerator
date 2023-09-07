class c_2489_1;
    integer i = -413;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2489_1;
    c_2489_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01z1010z001x1z00xx0101zx11z111zxxzxzxzxzxxzxzxzzxzxzxzzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
