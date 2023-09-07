class c_1985_1;
    integer i = -329;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1985_1;
    c_1985_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0x1xxzz000z00x101z0z00x1xzxz0zzzzxxzxxxxxzxxzzxxxzzxxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
