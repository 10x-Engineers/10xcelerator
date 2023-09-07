class c_1335_1;
    integer i = -221;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1335_1;
    c_1335_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxx10z1xz0xz1z100z00z1zxx01z00xzxzzzxzxxxxzxzxxzxxxxzzxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
