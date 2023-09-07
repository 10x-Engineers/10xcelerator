class c_1767_1;
    integer i = -293;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1767_1;
    c_1767_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzxxzxxzzx00zzzxz1111x11x0x0zx1xxxzxxxzxxxzzzxxxxzxzxzxxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
