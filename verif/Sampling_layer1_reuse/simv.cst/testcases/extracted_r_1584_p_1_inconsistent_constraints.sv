class c_1584_1;
    integer i = -262;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1584_1;
    c_1584_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1001x1z1z1xz0101z1zx0x1z1xxx0xzzxzxzxzzxzzxxxzzxzzzxzxzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
