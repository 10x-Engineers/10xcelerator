class c_3324_1;
    integer i = -552;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3324_1;
    c_3324_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxz0z0zx0x011xx1z0z1xzzx01z0zxxxxzxxxxxzxzzxxxxzzzzxzzxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
