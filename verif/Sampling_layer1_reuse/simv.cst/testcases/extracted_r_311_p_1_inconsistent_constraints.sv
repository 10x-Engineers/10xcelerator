class c_311_1;
    integer i = -50;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_311_1;
    c_311_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01xz1zzz11zz00xxz01xz001100zzxxzxzxzxzxzxxzxxzzxzzzzxxzxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
