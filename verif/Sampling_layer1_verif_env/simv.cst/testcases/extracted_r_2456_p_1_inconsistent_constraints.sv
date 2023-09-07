class c_2456_1;
    integer i = -408;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2456_1;
    c_2456_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxz1xzz110zzxzxzzx1xxzxz11zz01zxzxzxxzzzxzxxzzxzxzxzzxxxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
