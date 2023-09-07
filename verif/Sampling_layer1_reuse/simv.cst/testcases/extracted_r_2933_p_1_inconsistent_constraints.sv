class c_2933_1;
    integer i = -487;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2933_1;
    c_2933_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x0z100xzzxxzx1z0zzx1zz0zzxz1zzxzzzxzxxzxxxxxzxxzxzzzzzzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
