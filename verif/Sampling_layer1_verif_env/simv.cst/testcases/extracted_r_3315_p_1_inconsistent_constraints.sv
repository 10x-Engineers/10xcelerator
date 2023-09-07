class c_3315_1;
    integer i = -551;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3315_1;
    c_3315_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00x001x0xzz1110z0z1xzzx111xx1x0xzxzzxzxxzzzxzzxxxxzzzxzzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
