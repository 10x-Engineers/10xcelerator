class c_1043_1;
    integer i = -172;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1043_1;
    c_1043_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0z1zxx11zzxx00xx0zzz01xz00x101xzzxxxzxzzxxzzzxzxzzzzzzzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
