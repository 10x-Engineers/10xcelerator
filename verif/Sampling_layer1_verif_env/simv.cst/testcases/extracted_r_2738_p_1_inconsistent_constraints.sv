class c_2738_1;
    integer i = -455;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2738_1;
    c_2738_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xxx1x1x010z0zxzz1x1z1xz0x1xzzzxzxzxxzxzxzxxzxxxzxzzxxxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
