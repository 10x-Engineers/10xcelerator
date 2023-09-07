class c_1946_1;
    integer i = -323;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1946_1;
    c_1946_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z1x0110zx000110x1x10111xx10z11zzzzxzxxxzxxzxzxzzzzxxxxxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
