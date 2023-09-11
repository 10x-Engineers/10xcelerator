class c_2245_1;
    integer i = -373;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2245_1;
    c_2245_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzz1zz0110x0z01xz1xx0zz0100xx0xxxxzzxzzxxxzxzzxzzxzzxzxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
