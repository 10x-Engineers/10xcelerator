class c_1198_1;
    integer i = -198;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1198_1;
    c_1198_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11xzzz11zxzxz00100xzx011xz0xxxzxzzzzzzzzzzzxzzzxxxzxzzzxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
