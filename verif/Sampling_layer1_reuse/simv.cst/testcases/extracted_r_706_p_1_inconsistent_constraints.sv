class c_706_1;
    integer i = -116;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_706_1;
    c_706_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzzz10zz01xzzxx1x10x01z011xx11xzzxzzxxxzzzzzzxzzxzzxzzzzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
