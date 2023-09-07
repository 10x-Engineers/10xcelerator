class c_3386_1;
    integer i = -563;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3386_1;
    c_3386_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zzzzzzxzxzz0x0zxxzxzzzz101zzx0zxxxxzzxxzxxzxzxxzxzzxxzxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
