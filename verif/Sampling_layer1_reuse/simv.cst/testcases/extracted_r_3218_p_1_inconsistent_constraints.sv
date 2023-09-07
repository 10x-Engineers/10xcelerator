class c_3218_1;
    integer i = -535;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3218_1;
    c_3218_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101x1z10101zz00xz11zxxzxz1zx0z0zzxxxxzzxzzxxzzzxzzzzxxzzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
