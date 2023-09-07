class c_393_1;
    integer i = -64;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_393_1;
    c_393_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x10zz11z1zz1xzxx10x1xxx01xxzz0zzzzxzzxxxzzxxzzxxxzzzxxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram