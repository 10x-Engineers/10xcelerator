class c_3220_1;
    integer i = -535;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3220_1;
    c_3220_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110xzzx1x100xx011xzxzx01z10xzxxxxzzzzzzzzxzzxxxzzzxxzxxzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
