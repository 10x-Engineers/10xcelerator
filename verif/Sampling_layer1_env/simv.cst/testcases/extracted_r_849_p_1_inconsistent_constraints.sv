class c_849_1;
    integer i = -140;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_849_1;
    c_849_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zzzzz1zxx00zz110zzzx11zxx0z0zzzxzxxxzxxxxzzxzxxzxxxxzzzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
