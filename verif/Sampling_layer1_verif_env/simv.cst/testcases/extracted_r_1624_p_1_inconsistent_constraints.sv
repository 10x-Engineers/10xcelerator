class c_1624_1;
    integer i = -269;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1624_1;
    c_1624_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z1z1z1z1zz101z110z10xzzz10zxz1zzzzxxzxzzzzzzxzxxzzxxxxxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
