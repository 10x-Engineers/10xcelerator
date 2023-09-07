class c_3121_1;
    integer i = -519;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3121_1;
    c_3121_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101z01z1zxxz1x1xx1x1xx10x1000010xxxxzxzzxzxxzxzxzxzzxzzzxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
