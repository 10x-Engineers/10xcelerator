class c_1794_1;
    integer i = -297;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1794_1;
    c_1794_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1xx01xz0z0z0z0xz0zzz0001100xxzxxzxzzzxzxzzzzzxzzxxzzxxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
