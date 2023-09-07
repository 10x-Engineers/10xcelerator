class c_2847_1;
    integer i = -473;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2847_1;
    c_2847_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0zzxz0zxxx010z01xz011zxz0x1xxxxxzzxzzzzzxzxzzzzxzxzzzxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
