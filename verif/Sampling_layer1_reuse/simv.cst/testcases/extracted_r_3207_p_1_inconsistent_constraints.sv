class c_3207_1;
    integer i = -533;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3207_1;
    c_3207_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx0zz11z1001xzx10z00xxzzx0zxz11zzxxzxxzzxzzxzxzxxxxxzzzzzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
