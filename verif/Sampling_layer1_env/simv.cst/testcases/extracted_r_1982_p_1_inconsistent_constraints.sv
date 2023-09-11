class c_1982_1;
    integer i = -329;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1982_1;
    c_1982_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01xz1x0z010z00xxxxxz11x0zx0xxxzxzxzxzxzxzzxzxxzzxxzzxzxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
