class c_416_1;
    integer i = 416;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_416_1;
    c_416_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0xx0001x0zz10zzxxx0001zxzz10z0zxxxxxzzzxxzxzxzxzzxzxxxxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
