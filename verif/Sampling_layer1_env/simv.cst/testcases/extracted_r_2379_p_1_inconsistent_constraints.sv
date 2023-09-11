class c_2379_1;
    integer i = -395;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2379_1;
    c_2379_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zzzx01x1x1011xx01zzz10xx01111xxzzzxzxzxxxzzzzzzxzxzzzzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
