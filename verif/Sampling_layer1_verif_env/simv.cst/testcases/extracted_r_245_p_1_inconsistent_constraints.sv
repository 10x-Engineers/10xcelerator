class c_245_1;
    integer i = -39;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_245_1;
    c_245_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz00xzxzx1x1z001z0zxx01xzzzz10zxzxzxxzzxzxxzxxxzzzxzxxzxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
