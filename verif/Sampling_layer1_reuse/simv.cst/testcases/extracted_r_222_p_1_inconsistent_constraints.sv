class c_222_1;
    integer i = -35;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_222_1;
    c_222_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0011zzx000zzx0xz11z01x01x11zxxxzxzzzzzxxzxxzxzxzzzzxxzzxzzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
