class c_1298_1;
    integer i = -215;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1298_1;
    c_1298_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzx10zx0zzzzzx11z00zz10xzxx00xxxzxxzzxzzzzxxzzzxzzzxzzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
