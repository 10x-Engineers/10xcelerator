class c_853_1;
    integer i = -141;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_853_1;
    c_853_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100xzxz0zzxxz1z00xzzxzzzzzxz1x0zxxxxxzxzxxzxzzxxxxzxxzxzxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
