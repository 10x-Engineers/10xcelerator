class c_3285_1;
    integer i = -546;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3285_1;
    c_3285_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z11zxxzxx010z0z00z0xxzz0z00z01xzxxzxzzxxzxxzxxxxzxxxzzxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
