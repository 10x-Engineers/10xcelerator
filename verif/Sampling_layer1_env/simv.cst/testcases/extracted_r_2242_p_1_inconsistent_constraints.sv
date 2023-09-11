class c_2242_1;
    integer i = -372;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2242_1;
    c_2242_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1xz110x1x1x1zx0zzxx10010xz01xzxzxzxzxzzxxzxzxxzxxxxxzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
