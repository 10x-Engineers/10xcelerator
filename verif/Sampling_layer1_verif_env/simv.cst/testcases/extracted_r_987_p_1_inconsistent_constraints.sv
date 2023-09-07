class c_987_1;
    integer i = -163;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_987_1;
    c_987_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z1zx10z1zzx0z0xx0zzxx0zzzx001xxxxxzxxzzxxzzzzxxxzzzxxzxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
