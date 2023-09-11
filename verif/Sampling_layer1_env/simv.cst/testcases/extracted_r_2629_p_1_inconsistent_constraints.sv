class c_2629_1;
    integer i = -437;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2629_1;
    c_2629_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxx1z1z10zxx00011zx0xzzxx10z11zzxzxzzzxxxzzxxzxxzxxzxzxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
